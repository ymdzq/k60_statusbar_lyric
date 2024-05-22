.class Lcom/miui/maml/ActionCommand$OnOffCommandHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field protected mIsOn:Z

.field protected mIsToggle:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "toggle"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "on"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "off"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    .line 38
    :cond_2
    :goto_0
    return-void
    .line 40
.end method
