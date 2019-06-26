package br.com.bixos.rainBebidas.exceptions;

public class ProdutoSemQuantidadeException extends Exception /* RuntimeException */ {

	private static final long serialVersionUID = 7142551990939051335L;

	public ProdutoSemQuantidadeException(String msg) {
		super(msg);
	}

	public ProdutoSemQuantidadeException(String msg, Throwable cause) {
		super(msg, cause);
	}
}