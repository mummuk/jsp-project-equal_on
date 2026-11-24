
package com.equalon.dao;

import java.util.ArrayList;
import java.util.List;

import com.equalon.model.Notice;

public class NoticeDAO {

    // 공지사항 데이터를 저장하는 리스트
    private static List<Notice> noticeList = new ArrayList<>();

    // 임시 공지사항 데이터 초기화
    static {

        noticeList.add(new Notice(
            3,
            "EQUAL:ON 홈페이지 오픈 안내",
            "2026-11-10",
            25,
            "EQUAL:ON 홈페이지가 오픈되었습니다.\n\n"
            + "본 사이트는 성평등과 성폭력 예방에 관한 "
            + "정보를 제공하기 위해 제작되었습니다."
        ));

        noticeList.add(new Notice(
            2,
            "서비스 이용 안내",
            "2026-11-08",
            18,
            "EQUAL:ON 서비스 이용과 관련된 안내사항입니다."
        ));

        noticeList.add(new Notice(
            1,
            "성평등 교육 자료 업데이트 안내",
            "2026-11-05",
            42,
            "새로운 성평등 교육 자료가 업데이트되었습니다."
        ));

    }


    // 전체 공지사항 목록 반환
    public List<Notice> getNoticeList() {

        return new ArrayList<>(noticeList);

    }


    // 게시글 번호로 공지사항 검색
    public Notice getNoticeById(int id) {

        for (Notice notice : noticeList) {

            if (notice.getId() == id) {
                return notice;
            }

        }

        return null;

    }

}
