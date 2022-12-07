package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    BoardDAO boardDAO;

    @Override
    public int insertClassList(BoardVO vo) {
        return boardDAO.insertClassList(vo);
    }

    @Override
    public int deleteBoard(int seq) {
        return 0;
    }

    @Override
    public int updateBoard(BoardVO vo) {
        return 0;
    }

    @Override
    public BoardVO getBoard(int seq) {
        return null;
    }

    @Override
    public List<BoardVO> getBoardList() {
        return null;
    }

//    @Override
//    public int deleteClassList(int seq) {
//        return boardDAO.deleteClassList(seq);
//    }
//
//    @Override
//    public int updateClassList(BoardVO vo) {
//        return boardDAO.updateClassList(vo);
//    }
//
//    @Override
//    public BoardVO getClassList(int seq) {
//        return boardDAO.getClassList(seq);
//    }
//
//    @Override
//    public List<BoardVO> getClassListList() {
//        return boardDAO.getClassListList();
//    }
}