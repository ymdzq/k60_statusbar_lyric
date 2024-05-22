# classes5.dex

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
    .param p1, "this$0"  # Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;
    .param p2, "arg0"  # Landroid/os/Looper;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->getHandlerEnum(I)Lcom/android/systemui/statusbar/lyrics/HandlerEnum;

    move-result-object v0

    .line 64
    .local v0, "handlerEnum":Lcom/android/systemui/statusbar/lyrics/HandlerEnum;
    sget-object v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$3;->$SwitchMap$com$android$systemui$statusbar$lyrics$HandlerEnum:[I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lyrics/HandlerEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_8a

    goto/16 :goto_89

    .line 79
    :pswitch_14  #0x7
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$fgeticonPackageName(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$msetPackageIcon(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;Z)V

    goto :goto_89

    .line 71
    :pswitch_2a  #0x6
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget v1, v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    if-nez v1, :cond_42

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->clearPackageIcon()V

    goto :goto_89

    .line 75
    :cond_42
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$fgeticonPackageName(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$msetPackageIcon(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;Z)V

    .line 77
    goto :goto_89

    .line 69
    :pswitch_4c  #0x5
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$msetPackageIcon(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;Z)V

    goto :goto_89

    .line 68
    :pswitch_57  #0x4
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setScreenOn(I)V

    goto :goto_89

    .line 67
    :pswitch_65  #0x3
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->-$$Nest$msetLyricTextSize(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;F)V

    goto :goto_89

    .line 66
    :pswitch_73  #0x2
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setAnimationText(Ljava/lang/String;)V

    goto :goto_89

    .line 65
    :pswitch_7d  #0x1
    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;->this$0:Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    .line 83
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7d  #00000001
        :pswitch_73  #00000002
        :pswitch_65  #00000003
        :pswitch_57  #00000004
        :pswitch_4c  #00000005
        :pswitch_2a  #00000006
        :pswitch_14  #00000007
    .end packed-switch
.end method
