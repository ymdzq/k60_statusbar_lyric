.class public Lmiuix/provision/TitleLayoutHolder;
.super Ljava/lang/Object;
.source "TitleLayoutHolder.java"


# instance fields
.field adjusted:Z

.field private titleLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmiuix/provision/TitleLayoutHolder;->titleLayout:Landroid/view/View;

    .line 29
    iput-boolean p2, p0, Lmiuix/provision/TitleLayoutHolder;->adjusted:Z

    return-void
.end method

.method public static adjustPaddingTop(Lmiuix/provision/TitleLayoutHolder;I)V
    .locals 5

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lmiuix/provision/TitleLayoutHolder;->getTitleLayout()Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lmiuix/provision/TitleLayoutHolder;->isAdjusted()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " currentPaddingTop is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and paddingTop is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OobeUtil2"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lmiuix/provision/TitleLayoutHolder;->setAdjusted(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTitleLayout()Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lmiuix/provision/TitleLayoutHolder;->titleLayout:Landroid/view/View;

    return-object p0
.end method

.method public isAdjusted()Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lmiuix/provision/TitleLayoutHolder;->adjusted:Z

    return p0
.end method

.method public setAdjusted(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lmiuix/provision/TitleLayoutHolder;->adjusted:Z

    return-void
.end method
