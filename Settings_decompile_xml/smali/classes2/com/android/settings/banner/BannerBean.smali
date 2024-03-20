.class public Lcom/android/settings/banner/BannerBean;
.super Ljava/lang/Object;
.source "BannerBean.java"


# instance fields
.field private action:Ljava/lang/String;

.field private arrowIcon:I

.field private authority:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private pkg:Ljava/lang/String;

.field private priority:I

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 16
    iput v0, p0, Lcom/android/settings/banner/BannerBean;->priority:I

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/settings/banner/BannerBean;->arrowIcon:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 117
    instance-of v0, p1, Lcom/android/settings/banner/BannerBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 120
    :cond_2
    check-cast p1, Lcom/android/settings/banner/BannerBean;

    .line 121
    iget v2, p0, Lcom/android/settings/banner/BannerBean;->priority:I

    iget v3, p1, Lcom/android/settings/banner/BannerBean;->priority:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/settings/banner/BannerBean;->arrowIcon:I

    iget v3, p1, Lcom/android/settings/banner/BannerBean;->arrowIcon:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->authority:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/banner/BannerBean;->authority:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/banner/BannerBean;->pkg:Ljava/lang/String;

    .line 122
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/banner/BannerBean;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/banner/BannerBean;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->summary:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/banner/BannerBean;->summary:Ljava/lang/String;

    .line 123
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->icon:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/banner/BannerBean;->icon:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/banner/BannerBean;->action:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->extras:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settings/banner/BannerBean;->extras:Ljava/lang/String;

    .line 124
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/banner/BannerBean;->url:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->action:Ljava/lang/String;

    return-object p0
.end method

.method public getArrowIcon()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/settings/banner/BannerBean;->arrowIcon:I

    return p0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->authority:Ljava/lang/String;

    return-object p0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->extras:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/settings/banner/BannerBean;->priority:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->summary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 11

    .line 129
    iget-object v0, p0, Lcom/android/settings/banner/BannerBean;->authority:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/banner/BannerBean;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/banner/BannerBean;->title:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/banner/BannerBean;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/banner/BannerBean;->summary:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/banner/BannerBean;->icon:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/banner/BannerBean;->arrowIcon:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/banner/BannerBean;->action:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/banner/BannerBean;->extras:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/banner/BannerBean;->url:Ljava/lang/String;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/banner/BannerBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setArrowIcon(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/settings/banner/BannerBean;->arrowIcon:I

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/banner/BannerBean;->authority:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/banner/BannerBean;->extras:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/banner/BannerBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/banner/BannerBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/banner/BannerBean;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/settings/banner/BannerBean;->priority:I

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/banner/BannerBean;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/banner/BannerBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/banner/BannerBean;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TipsLocalModel{AUTHORITY=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/banner/BannerBean;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", PKG=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", TEXT=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", PRIORITY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/banner/BannerBean;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SUMMARY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ARROW_ICON="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/banner/BannerBean;->arrowIcon:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ACTION=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", EXTRAS=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->extras:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ICON=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/banner/BannerBean;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", URL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/banner/BannerBean;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
