package com.example.board;

import java.util.List;

public interface BoardService {
    public int insertClassList(BoardVO vo);
    public int deleteBoard(int seq);
    public int updateBoard(BoardVO vo);
    public BoardVO getBoard(int seq);
    public List<BoardVO> getBoardList();
//
//    int deleteClassList(int seq);
//
//    int updateClassList(BoardVO vo);
//
//    BoardVO getClassList(int seq);
//
//    List<BoardVO> getClassListList();
}