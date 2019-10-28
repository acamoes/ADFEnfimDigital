<table>
    <thead>
        <tr>
            <th>AEP</th>
            <th>Nome</th>
            <th>Email</th>
            <th>Mobile</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        {foreach $resultadoInscritos as $inscritos}
            <tr {if $inscritos['status'] neq 'Ativo'}style='color:orangered'{/if}>
                <td>{$inscritos['aepId']}</td>
                <td>{$inscritos['name']}</td>
                <td class="actions" align="right"><a
                        class="button big icon fa-envelope"
                        style="cursor: help; padding: 0 0 0 5pt; box-shadow: none"
                        title="{$inscritos['email']}"></a></td>
                <td class="actions" align="right"><a
                        class="button big icon fa-mobile-phone"
                        style="cursor: help; padding: 0 0 0 5pt; box-shadow: none"
                        title="{$inscritos['mobile']}"></a></td>
                <td class="actions" align="right"><a
                        class="button small icon fa-plus-circle"
                        style="cursor: pointer; padding: 0 0 0 5pt"
                        onclick="$.when(request('action={$action}&task=adicionar&tab={$currentTab}&idCourses={$idCourses}&idUsers={$inscritos['idUsers']}&searchUtilizadores=' + document.getElementById('searchUtilizadores').value, 'formMsg'))
                                        .done(request('action={$action}&task=novo&tab={$currentTab}&idCourses={$idCourses}&searchUtilizadores=' + document.getElementById('searchUtilizadores').value, 'resultado{$currentTab|ucfirst}'));"></a>
                </td>
            </tr>
        {/foreach}
    </tbody>
</table>