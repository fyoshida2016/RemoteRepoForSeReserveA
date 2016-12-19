package servlet;

import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

import java.util.LinkedList;

import org.junit.Test;

import common.TestDataBase;
import common.TestServlet;
import model.Reservation;
import model.Room;
import model.User;

public class ReservationListServletTest extends TestServlet {

	@Test
	public void 全会議室を読み込む() throws Exception {
		// データベースにテストデータを挿入
		TestDataBase db=new TestDataBase();
		db.setTestData("./testdata/story09/ReservationListServlet_test.xls");

		// Postメソッドを指定
		setPost();

		// Servletを呼び出す。
		callServlet();

		// RequestにReservationオブジェクトが保存されていること（nullではないこと）を確認
		assertThat(request.getAttribute("ReservationInfo"),is(notNullValue()));

		// RequestからReservationオブジェクトを読み込み
		LinkedList<Reservation> reservations=(LinkedList<Reservation>)request.getAttribute("ReservationInfo");

		// 読み込んだリストに登録されている部屋の数をチェック
		assertThat(reservations.size(),is(2));

		// 読み込んだオブジェクトのプロパティの値が適切かどうかをチェック
		Reservation reservation=reservations.get(0);
		assertThat(reservation.getUser().getRid(),is(1));
		assertThat(reservation.getRoom().getRid(),is(2));
		assertThat(reservation.getStartYear(),is(2016));
		assertThat(reservation.getStartMonth(),is(12));
		assertThat(reservation.getStartDay(),is(5));
		assertThat(reservation.getStartHour(),is(13));
		assertThat(reservation.getStartMinute(),is(0));
		assertThat(reservation.getPeriodHour(),is(1));
		assertThat(reservation.getPeriodMinute(),is(30));

	}

}
