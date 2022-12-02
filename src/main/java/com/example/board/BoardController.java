package com.example.controller;

import com.example.bean.BoardVO;
import com.example.board.BoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class BoardController {
    @Autowired
    BoardDAO boardDAO;
    @RequestMapping(value = "board/list", method = RequestMethod.GET)
    public String classlistlist(Model model) {
        model.addAttribute("list", boardDAO.getClassListList());
        return"posts";
    }

    @RequestMapping(value = "board/add", method = RequestMethod.GET)
    public String addPost() {
        return"addpostform";
    }

    @RequestMapping(value = "board/addok", method = RequestMethod.POST)
    public String addPostOK(BoardVO vo) {
        int i = boardDAO.insertClassList(vo);
        if(i == 0)
            System.out.println("데이터 추가 실패 ");
        else
            System.out.println("데이터 추가 성공!!! ");
        return "redirect:list";
    }

    @RequestMapping(value = "board/editpost/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardDAO.getClassList(id);
        model.addAttribute("boardVO", boardVO);
        return "editform";
    }
}