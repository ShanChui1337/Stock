package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 u_log
 * 
 * @author ruoyi
 * @date 2025-05-25
 */
public class ULog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private String id;

    /** 商品id */
    @Excel(name = "商品id")
    private String sid;

    /** 商品名字 */
    @Excel(name = "商品名字")
    private String sName;

    /** 图片 */
    @Excel(name = "图片")
    private String sImg;

    /** 商品类别 */
    @Excel(name = "商品类别")
    private String sLb;

    /** 仓库ID */
    @Excel(name = "仓库ID")
    private String gid;

    /** 仓库名字 */
    @Excel(name = "仓库名字")
    private String cname;

    /** 仓库地址 */
    @Excel(name = "仓库地址")
    private String sAddress;

    /** 仓库内容 */
    @Excel(name = "仓库内容")
    private String sContenct;

    /** 数量 */
    @Excel(name = "数量")
    private String snum;

    /** 类型 */
    @Excel(name = "类型")
    private String stype;

    /** 操作人 */
    @Excel(name = "操作人")
    private String uname;

    /** 操作时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "操作时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date tim;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setSid(String sid) 
    {
        this.sid = sid;
    }

    public String getSid() 
    {
        return sid;
    }
    public void setsName(String sName) 
    {
        this.sName = sName;
    }

    public String getsName() 
    {
        return sName;
    }
    public void setsImg(String sImg) 
    {
        this.sImg = sImg;
    }

    public String getsImg() 
    {
        return sImg;
    }
    public void setsLb(String sLb) 
    {
        this.sLb = sLb;
    }

    public String getsLb() 
    {
        return sLb;
    }
    public void setGid(String gid) 
    {
        this.gid = gid;
    }

    public String getGid() 
    {
        return gid;
    }
    public void setCname(String cname) 
    {
        this.cname = cname;
    }

    public String getCname() 
    {
        return cname;
    }
    public void setsAddress(String sAddress) 
    {
        this.sAddress = sAddress;
    }

    public String getsAddress() 
    {
        return sAddress;
    }
    public void setsContenct(String sContenct) 
    {
        this.sContenct = sContenct;
    }

    public String getsContenct() 
    {
        return sContenct;
    }
    public void setSnum(String snum) 
    {
        this.snum = snum;
    }

    public String getSnum() 
    {
        return snum;
    }
    public void setStype(String stype) 
    {
        this.stype = stype;
    }

    public String getStype() 
    {
        return stype;
    }
    public void setUname(String uname) 
    {
        this.uname = uname;
    }

    public String getUname() 
    {
        return uname;
    }
    public void setTim(Date tim) 
    {
        this.tim = tim;
    }

    public Date getTim() 
    {
        return tim;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("sid", getSid())
            .append("sName", getsName())
            .append("sImg", getsImg())
            .append("sLb", getsLb())
            .append("gid", getGid())
            .append("cname", getCname())
            .append("sAddress", getsAddress())
            .append("sContenct", getsContenct())
            .append("snum", getSnum())
            .append("stype", getStype())
            .append("uname", getUname())
            .append("tim", getTim())
            .toString();
    }
}
