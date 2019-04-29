<!-- Sidebar -->
<ul class="sidebar navbar-nav">
{foreach $tabla_menus as $fila}
	<li class="nav-item active">
	  <a class="nav-link" href="{$fila.url}">
	    {$fila.icono}
	    <span>{$fila.titulo}</span>
	  </a>
	</li>
{/foreach}
</ul>