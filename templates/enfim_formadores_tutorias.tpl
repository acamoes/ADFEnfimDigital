<div class="table-wrapper">
    <ul style="float: left">
        <form>
            <input type="text" id="{$currentTab}search" name="{$currentTab}search" style="height: 2em; padding: 0 0; display: inline-block;" />
            <a class="button small icon fa-search" title="pesquisar"
               style="box-shadow: 
               -webkit-box-shadow: 0px 0px 0px 0px rgba(0, 0, 0, 0); 
               -moz-box-shadow: 0px 0px 0px 0px rgba(0, 0, 0, 0); 
               box-shadow: 0px 0px 0px 0px rgba(0, 0, 0, 0); 
               cursor: pointer; padding: 0 0 0 5pt"
               onclick="request('action={$action}&task=search&tab={$currentTab}&idCourses={$idCourses}&search=' + document.getElementById('{$currentTab}search').value, 'ST{$currentTab}');">
            </a>
        </form>
    </ul>
    <ul class="actions" onclick="request('action={$action}&task=novo&docType=Tutorias&tab={$currentTab}&idCourses={$idCourses}', 'form');"
        style="float: right">
        <li class="button small"
            style="cursor: pointer; padding: 0 10pt 0 10pt">Novo</li>
    </ul>
</div>
<table>
    <thead>
        <tr>
            <th>Requisito</th>
             <th>idCourse</th>
            <th>Formando</th>
            <th>Cargo</th>  
            <th>Orgão</th> 
            <th>Diretor</th>
            <th>Tutor</th>
            <th>Validado</th> 
        </tr>
    </thead>		
    <tbody>
        {foreach $formadores->tutorias as $tutorias}
            <tr>
                <td>{$tutorias['Requisito']}</td>
                <td>{$tutorias['idCourse']}</td>
                <td>{$tutorias['Formando']}</td>
                <td></td>
                <td></td>
                <td>{$tutorias['Diretor']}</td>
                <td>{$tutorias['Tutor']}</td>
                {* <td style="overflow: hidden;
                    white-space: nowrap;
                    text-overflow: ellipsis;
                    -o-text-overflow: ellipsis;">{$tutorias['document']}</td> *}
                {* <td {if $tutorias['status'] neq 'Ativo'}style="color: orangered;"{/if}>{$tutorias['director']}</td> *}
                {* <td>
                    {if $informacoes['ext']!=''}
                        <i onclick="location.href = '{$SCRIPT_NAME}?action=files&task=getArchiveAll&id={$informacoes['idInformations']}&filePos=5'" 
                           class="icon fa-file{if $informacoes['ext']=='pdf'}-pdf-o{elseif $informacoes['ext']=='zip'}-zip-o{/if}" 
                           title="{$informacoes['document']}" 
                           style="color:#fff;cursor: pointer; padding: 0 0 0 5pt;border-line:none;box-shadow:0 0 0 0">
                        </i>
                    {/if}
                </td>
                *}
                <td><div class="w3-progress-container w3-small w3-round">
                        <div class="w3-progressbar w3-green w3-round" 
                             {if $tutorias['viewed'] eq '1'} style="width:100%; coursor:pointer" title="Aproveitamento na Etapa"
                                 {/if}
                             ></div>
                    </div>
                </td>
                <td class="actions" align="right"><a
                        class="button small icon fa-file" title="ver"
                        style="cursor: pointer; padding: 0 0 0 5pt"
                        onclick="request('action={$action}&task=ver&tab={$currentTab}&idCourses={$idCourses}&idMentoring={$tutorias['idMentoring']}', 'form');"></a>
                    <a class="button small icon fa-edit" title="editar"
                       style="cursor: pointer; padding: 0 0 0 5pt"
                       onclick="request('action={$action}&task=editar&tab={$currentTab}&idCourses={$idCourses}&idMentoring={$tutorias['idMentoring']}', 'form');"></a>
                    <a class="button small icon fa-eraser" title="apagar"
                       style="cursor: pointer; padding: 0 0 0 5pt"                       
                       onclick="if (confirm('Tem a certeza que pretende apagar o registo?')) {ldelim}
                                   $.when(request('action={$action}&task=apagar&tab={$currentTab}&idCourses={$idCourses}&idMentoring={$tutorias['idMentoring']}', '{$action}Msg'))
                                           .done(request('action={$action}&task=search&tab={$currentTab}&idCourses={$idCourses}&search=' + document.getElementById('{$currentTab}search').value, 'ST{$currentTab}'));
                               }"> </a>                   
                </td>
            </tr>
        {/foreach}
    </tbody>
</table>