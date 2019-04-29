{if {$tabla} != ""}
   <tr>
   <th class="text-center"><button class="btn btn-warning btn-sm" title="Adicionar" data-toggle="modal" data-target="#formModal" onclick="adicionar();"><i class="fas fa-plus-square" style="font-size:12px"></i></button></th>

   {foreach {$tabla} as $fila} 

   <th>{$fila.Field}</th>

   	{/foreach}

{/if}