<section id="wrapper" style="width: 700px;">
    <section id="one" class="wrapper spotlight left style2"
             style="border-radius: 5px; width: 700px;">
        <div class="inner">
            <div class="content">
                <section>
                    <script>
                        function submeter() {
                            var datastring = $("#{$currentTab}Atualizar").serializeArray();
                            datastring.push({ldelim}name: 'action', value: '{$action}'});
                                    datastring.push({ldelim}name: 'task', value: 'inserir'});
                                            datastring.push({ldelim}name: 'tab', value: '{$currentTab}'});
                                                    datastring.push({ldelim}name: 'idCourses', value: '{$idCourses}'});
                                                            $.ajax({
                                                                url: '{$SCRIPT_NAME}',
                                                                data: datastring,
                                                                success: function (result) {
                                                                    $('#formMsg').html(result);
                                                                }
                                                            });
                                                        }

                    </script>
                    <form id="{$currentTab}Atualizar" name="{$currentTab}Atualizar"
                          onSubmit="submeter();
                                  return false;">    
                        <div class="row uniform" style="padding-top: 1.75em">
                            <div style="float: right">
                                <label style="float: right; cursor: pointer"
                                       onclick="closeModal();
                                               request('action={$action}&task=search&tab={$currentTab}&idCourses={$idCourses}&search=' + document.getElementById('{$currentTab}search').value, 'ST{$currentTab}');">X
                                    Close</label>
                            </div>
                        </div>
                        <div class="row uniform">
                            <div id="formMsg"></div>
                            <input type="hidden" name="idCourses" id="idCourses"
                                   value="{$idCourses}" /> 
                            <input type="hidden" name="idCourse" id="idCourse"
                                   value="{$sessao['idCourse']}" />
                            <input type="hidden" name="idModules" id="idModules"
                                   value="{$sessao['idModules']}" /> 
                        </div>
                        <div class="row uniform">
                            <div style="float: left">
                                <label for="name">Módulo</label>
                                <input required type="text" name="name" id="name" value="{$sessao['name']}" style="width: 350px" />
                            </div>
                            <div style="float: right">
                                <label for="duration">Duração</label>
                                <input required type="text" name="duration" id="duration" value="{$sessao['duration']}" style="width: 150px" {literal}pattern="^[0-9]{2,3}$"{/literal} />
                            </div>
                        </div>							
                        <div class="row uniform">
                            <div style="float: left">
                                <label for="observations">Observações</label>
                                <textarea required cols="5" rows="3" name="observations" id="observations" style="width: 630px">{$sessao['observations']|urldecode}</textarea>
                            </div>
                        </div>
                        <div class="row uniform">
                            <div style="float: right;">
                                <button>Submit</button>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </section>
</section>       