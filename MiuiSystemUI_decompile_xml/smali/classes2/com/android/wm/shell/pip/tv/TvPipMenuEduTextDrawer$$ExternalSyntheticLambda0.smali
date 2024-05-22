.class public final synthetic Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 8
    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->$r8$lambda$2GDlmZOpGSSk_mkyIVJnZDt_4Mk(Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;)V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v0}, Landroid/widget/TextView;->getMarqueeRepeatLimit()I

    .line 25
    move-result v0

    .line 28
    int-to-long v0, v0

    .line 29
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object v0

    .line 35
    const-string v1, "TvPipMenuEduTextDrawer"

    .line 36
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    const/4 v1, 0x4

    .line 42
    const-string v3, "%s: startScrollEduText(), repeat=%d"

    .line 43
    const v4, 0x2242129

    .line 45
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;->mEduTextView:Landroid/widget/TextView;

    .line 51
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 54
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 58
.end method
