package vo;

/**
 * Created by 아라 on 2020-01-15.
 */
public class QavComments {
    int comt_bdno;
    int qav_bdno;
    String comt_userid;
    String comt_contents;
    int comt_likes;
    String comt_regdate;

    public int getComt_bdno() {
        return comt_bdno;
    }

    public void setComt_bdno(int comt_bdno) {
        this.comt_bdno = comt_bdno;
    }

    public int getQav_bdno() {
        return qav_bdno;
    }

    public void setQav_bdno(int qav_bdno) {
        this.qav_bdno = qav_bdno;
    }

    public String getComt_userid() {
        return comt_userid;
    }

    public void setComt_userid(String comt_userid) {
        this.comt_userid = comt_userid;
    }

    public String getComt_contents() {
        return comt_contents;
    }

    public void setComt_contents(String comt_contents) {
        this.comt_contents = comt_contents;
    }

    public int getComt_likes() {
        return comt_likes;
    }

    public void setComt_likes(int comt_likes) {
        this.comt_likes = comt_likes;
    }

    public String getComt_regdate() {
        return comt_regdate;
    }

    public void setComt_regdate(String comt_regdate) {
        this.comt_regdate = comt_regdate;
    }
}
