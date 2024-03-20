.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Ljava/util/List;

    .line 12
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;->$r8$lambda$DuGgTBArXvzNEb_mAB8-CAb5lDE(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;Ljava/util/List;)V

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 20
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher$WindowDecorRectListener;

    .line 22
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;->$r8$lambda$G8JhzTYWTpkS821EFHy49879bGk(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController$WindowDecorRectDispatcherImpl;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher$WindowDecorRectListener;)V

    .line 24
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method
