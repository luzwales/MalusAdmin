﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/// <summary>
/// 通用分页输入参数
/// </summary>
public class PageParamBase
{
    /// <summary>
    /// 搜索值
    /// </summary>
    public virtual string KeyWord { get; set; }

    /// <summary>
    /// 当前页码
    /// </summary>
    public virtual int PageNo { get; set; } = 1;

    /// <summary>
    /// 页码容量
    /// </summary>
    public virtual int PageSize { get; set; } = 20;

    /// <summary>
    /// 搜索开始时间
    /// </summary>
    public virtual string SearchBeginTime { get; set; }

    /// <summary>
    /// 搜索结束时间
    /// </summary>
    public virtual string SearchEndTime { get; set; }

    /// <summary>
    /// 排序字段
    /// </summary>
    public virtual string SortField { get; set; }

    /// <summary>
    /// 排序方法,默认升序,否则降序(配合antd前端,约定参数为 Ascend,Dscend)
    /// </summary>
    public virtual string SortOrder { get; set; }

    /// <summary>
    /// 降序排序(不要问我为什么是descend不是desc，前端约定参数就是这样)
    /// </summary>
    public virtual string DescStr { get; set; } = "descend";
}