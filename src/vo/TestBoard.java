package vo;


public class TestBoard {
    private int bdno;
    private String title;
    private String contents;
    private String userid;
    private String regdate;
    private int thumb;
    private int views;

    public void setBdno(int bdno) {
        this.bdno = bdno;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    public void setThumb(int thumb) {
        this.thumb = thumb;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public int getBdno() {
        return bdno;
    }

    public String getTitle() {
        return title;
    }

    public String getContents() {
        return contents;
    }

    public String getUserid() {
        return userid;
    }

    public String getRegdate() {
        return regdate;
    }

    public int getThumb() {
        return thumb;
    }

    public int getViews() {
        return views;
    }

}
