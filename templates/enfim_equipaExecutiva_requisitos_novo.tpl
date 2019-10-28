<section id="wrapper" style="width: 900px;">
    <section id="one" class="wrapper spotlight left style2"
             style="border-radius: 5px; width: 100%;">
        <div class="inner">
            <div class="content">
                <section>
                    <script>
                        function submeter() {
                            var datastring = $("#{$currentTab}Novo").serializeArray();
                            datastring.push({ldelim}name: 'action', value: '{$action}'});
                                    datastring.push({ldelim}name: 'task', value: 'inserir'});
                                            datastring.push({ldelim}name: 'tab', value: '{$currentTab}'});
                                                    $.ajax({
                                                        url: '{$SCRIPT_NAME}',
                                                        data: datastring,
                                                        success: function (result) {
                                                            $('#form').html('');
                                                            $('#{$action}Msg').html(result);
                                                        }
                                                    });
                                                }

                    </script>
                    <form id="{$currentTab}Novo" name="{$currentTab}Novo"
                          onSubmit="submeter();return false;">    
                        <div class="row uniform" style="padding-top: 1.75em">
                            <div style="float: right">
                                <label style="float: right; cursor: pointer"
                                       onclick="closeModal();
                                               request('action={$action}&task=search&tab={$currentTab}&search=' + document.getElementById('{$currentTab}search').value, 'ST{$currentTab}');">X
                                    Close</label>
                            </div>
                        </div>
                        <div class="row uniform">
                            <div id="formMsg"></div>
                        </div>
                        <div class="row uniform">
                            <div style="float: left">
                                <label for="name">Curso</label> <select name="idCourse"
                                                                        id="idCourse" style="width: 400px">
                                    {foreach $equipaExecutiva->cursos as $curso}
                                        <option  
                                            {if $curso['status'] eq 'Inativo'}style="color: orangered;"{/if}
                                            value="{$curso['idCourse']}">{$curso['name']}</option>
                                    {/foreach}
                                    ?>
                                </select>
                            </div>
                            <div style="float: right">
                                <label for="order">Ordem</label><input required type="text" name="order" id="order" style="width: 100px" pattern="[0-9]+$" />
                            </div>
                        </div>

                        <div class="row uniform">
                            <div style="float: left">
                                <label for="name">Requisito</label><input required type="text"
                                                                       name="name" id="name" style="width: 810px" />
                            </div>
                        </div>

                        <div class="row uniform">
                            <div style="float: left">
                                <label for="purpose">Objetivo</label>
                                <textarea cols="5" rows="5" name="purpose" id="purpose" style="width: 810px"></textarea>
                            </div>
                        </div>

                        <div class="row uniform">
                            <div style="float: left">
                                <label for="task">O que fazer?</label>
                                <textarea cols="5" rows="5" name="todo" id="todo" style="width: 810px"></textarea>
                            </div>
                        </div>

                        <div class="row uniform">
                            <div style="float: left">
                                <label for="documents">Documentos</label>
                                <textarea cols="5" rows="3" name="documents" id="documents" style="width: 810px"></textarea>
                            </div>
                        </div>

                        <div class="row uniform">
                            <div style="float: left">
                                <label for="achievements">Terei conseguido?</label>
                                <textarea cols="5" rows="3" name="achievements" id="achievements" style="width: 810px"></textarea>
                            </div>
                        </div>

                        <div class="row uniform">
                            <div style="float: left">
                                <label for="status">Estado</label><select  name="status" id="status" style="width: 200px">
                                    <option value="Pendente">Pendente</option>
                                    <option value="Revisão">Revisão</option>
                                    <option value="Fechado">Fechado</option>
                                    <option value="Ativo">Ativo</option>
                                    <option value="Inativo">Inativo</option>
                                </select>					
                            </div>
                        </div>

                        <div class="row uniform">
                            <div style="float: left">
                                <label for="observations">Observações</label>
                                <textarea cols="5" rows="3" name="observations" id="observations" style="width: 810px"></textarea>
                            </div>
                        </div>

                        <div class="row uniform">
                            <div style="float: left">
                                <label for="duration">Duração</label><input required type="text" name="duration" id="duration" style="width: 100px" pattern="[0-9]+$" />
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