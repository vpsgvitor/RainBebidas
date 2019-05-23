

<div class="modal fade" id="novoUsuario" tabindex="-1" role="dialog" aria-labelledby="novoUsuario" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="novoUsuarioLabel">Novo Usuario</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="row justify-content-md-center">
					<div class="col">
						<form action="/usuario/salvar" method="post" class="col">
						
							<div class="form-group">
								<input type="hidden" class="form-control" id="codigo" name="codigo" value="${codigo}">
								<input type="text" class="form-control" id="nome" name="nome" placeholder="Nome" value="${nome}">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="user" name="email" placeholder="Email de usuario" value="${email}">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="senha" name="senha" placeholder="Senha" value="${senha}">
							</div>
							
							<button type="submit" class="btn btn-primary">Salvar</button>
						
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
