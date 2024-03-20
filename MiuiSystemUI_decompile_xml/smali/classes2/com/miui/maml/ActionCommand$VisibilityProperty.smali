.class Lcom/miui/maml/ActionCommand$VisibilityProperty;
.super Lcom/miui/maml/ActionCommand$PropertyCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "visibility"


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/ActionCommand$PropertyCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lcom/miui/maml/util/Variable;Ljava/lang/String;)V

    .line 2
    const-string/jumbo p1, "toggle"

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 11
    const/4 p2, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    iput-boolean p2, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const-string/jumbo p1, "true"

    .line 18
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    iput-boolean p2, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "false"

    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    .line 39
    :cond_2
    :goto_0
    return-void
    .line 41
.end method


# virtual methods
.method public doPerform()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsToggle:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 8
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lcom/miui/maml/elements/ScreenElement;

    .line 18
    iget-boolean p0, p0, Lcom/miui/maml/ActionCommand$VisibilityProperty;->mIsShow:Z

    .line 20
    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 22
    :goto_0
    return-void
    .line 25
.end method
