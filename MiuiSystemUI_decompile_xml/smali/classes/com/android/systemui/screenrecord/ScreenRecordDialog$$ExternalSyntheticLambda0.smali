.class public final synthetic Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenrecord/ScreenRecordDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    .line 8
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/screenrecord/ScreenRecordDialog;

    .line 14
    iget-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->mOnStartRecordingClicked:Ljava/lang/Runnable;

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordDialog;->requestScreenCapture(Lcom/android/systemui/media/MediaProjectionCaptureTarget;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 27
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method
