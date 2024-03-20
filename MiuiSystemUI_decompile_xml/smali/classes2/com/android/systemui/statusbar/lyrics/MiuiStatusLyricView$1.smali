# classes.dex

.class Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;
.super Landroid/os/Handler;
.source "MiuiStatusLyricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Landroid/os/Looper;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getHandlerEnum(I)Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$3;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_61

    const/4 v2, 0x3

    if-eq v0, v2, :cond_56

    const/4 v2, 0x4

    if-eq v0, v2, :cond_34

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1e

    goto :goto_77

    .line 73
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$fgeticonPackageName(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$msetPackageIcon(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;Z)V

    goto :goto_77

    .line 65
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 66
    iget-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget p1, p1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    if-nez p1, :cond_4c

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->clearPackageIcon()V

    goto :goto_77

    .line 69
    :cond_4c
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$fgeticonPackageName(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$msetPackageIcon(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;Z)V

    goto :goto_77

    .line 63
    :cond_56
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$msetPackageIcon(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;Z)V

    goto :goto_77

    .line 62
    :cond_61
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setAnimationText(Ljava/lang/String;)V

    goto :goto_77

    .line 61
    :cond_6b
    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    :goto_77
    return-void
.end method
