package com.board.controller;

import javax.smartcardio.CommandAPDU;

import com.board.controller.action.*;

// 싱글톤 형태의 factory 클래스 
public class ActionFactory
{
	private static ActionFactory instance = new ActionFactory();  // 객체는 1번만 생성 !! 
	
	private ActionFactory() {}
	
	public static ActionFactory getInstance() 
	{
		return instance;
		/*
		if( instance == null)
			instance =  new ActionFactory();
		
		refcount++;
		return instance;
		*/
		
	}
	
	public Action getAction( String command )
	{
		Action action = null;
		System.out.println("ActionFactory : " + command );
		
		if( command.equals("board_list")  )
			action =  new BoardListAction();
		else if( command.equals("board_view") ) 
			action =  new BoardViewAction();
		else if( command.equals("board_write_form"))
			action = new BoardWriteFormAction();
		else if (command.equals( "board_write")  )
			action = new BoardWriteAction();
		else if( command.equals("board_check_pass_form") ) // 팝업 요청 
			action = new BoardCheckPassFormAction();
		else if( command.equals("board_pass_check"))
			action =  new BoardCheckPassAction();
		else if( command.equals("borad_delete")) 
			action =  new BoardDeleteAction();
		else if( command.equals("board_update_form")) 
			action =  new BoardUpdateFormAction();
		else if( command.equals("board_update")) 
			action =  new BoardUpdateAction();
		else if( command.equals("order_title"))
			action = new OrderTitleAction();
		else if( command.equals("order_writedate"))
			action = new OrderWriteDateAction();
		else if( command.equals("order_readcount"))
			action = new OrderReadCountAction();
		else if( command.equals("board_login_form"))
			action = new BoardLoginFormAction();
		else if( command.equals("board_login"))
			action = new BoardLoginAction();
		else if( command.equals("board_reg_form"))
			action = new BoardRegFormAction();
		else if( command.equals("board_reg"))
			action = new BoardRegAction();
		else if( command.equals("board_logout"))
			action = new BoardLogoutAction();
		else if( command.equals("list_option"))
			action - new ListOptionAction();
		
			
		return action;
	}
	
	
}


















