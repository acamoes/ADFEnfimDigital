<section id="wrapper" style="width: 900px;">
    <section id="one" class="wrapper spotlight left style2"
             style="border-radius: 5px; width: 100%;">
        <div class="inner">
            <div class="content">
                <section>                     
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
                            <label for="name">Curso</label> 
                            <input required type="text"
                                   name="idCourse" id="idCourse" 
                                   value="{$requisito['curso']}"
                                   readonly="readonly"
                                   style="width: 400px" />
                        </div>
                        <div style="float: right">
                            <label for="order">Ordem</label>
                            <input required type="text"
                                   name="order" id="order" 
                                   style="width: 100px" pattern="[0-9]+$"
                                   value="{$requisito['order']}"
                                   readonly="readonly"
                                   />
                        </div>
                    </div>
                    <div class="row uniform">
                        <div style="float: left">
                            <label for="name">Requisito</label>
                            <input required type="text"
                                   name="name" id="name" 
                                   value="{$requisito['name']}"
                                   readonly="readonly"
                                   style="width: 810px" />
                        </div>
                        <div style="float: left">
                            <label for="purpose">Objetivo</label>
                            <input required type="text"
                                   name="purpose" id="name" 
                                   value="{$requisito['purpose']}"
                                   readonly="readonly"
                                   style="width: 810px"
                                   rows="5" />
                        </div>
                        <div style="float: left">
                            <label for="task">O que fazer?</label>
                            <input required type="text"
                                   name="task" id="task" 
                                   value="{$requisito['task']}"
                                   readonly="readonly"
                                   style="width: 810px" />
                        </div>
                        <div style="float: left">
                            <label for="documents">Documentos</label>
                            <input required type="text"
                                   name="documents" id="documents" 
                                   value="{$requisito['documents']}"
                                   readonly="readonly"
                                   style="width: 810px" />
                        </div>
                        <div style="float: left">
                            <label for="achievement">Terei conseguido?</label>
                            <input required type="text"
                                   name="achievements" id="achievement" 
                                   value="{$requisito['achievement']}"
                                   readonly="readonly"
                                   style="width: 810px" />
                        </div>
                        
                    </div>
                    <div class="row uniform">
                        <div style="float: right">
                            <label for="duration">Duração (m)</label>
                            <input required
                                   type="text" name="duration" id="duration" style="width: 100px"
                                   value="{$requisito['duration']}"
                                   readonly="readonly"/>
                        </div>
                    </div>
                    {* <div class="row uniform">
                        <div style="float: left">
                            <label for="status">Estado</label>
                            <input required
                                   type="text" name="status" id="status" style="width: 200px"
                                   value="{$requisito['status']}"
                                   readonly="readonly"/>				
                        </div>
                    </div> *}
                </section>
            </div>
        </div>
    </section>
</section>