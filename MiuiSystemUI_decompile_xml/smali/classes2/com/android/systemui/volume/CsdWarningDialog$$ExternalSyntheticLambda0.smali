.class public final synthetic Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/CsdWarningDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/CsdWarningDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/CsdWarningDialog;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/CsdWarningDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/CsdWarningDialog;

    .line 2
    iget v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mCsdWarning:I

    .line 4
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/volume/CsdWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    .line 9
    invoke-virtual {v0}, Landroid/media/AudioManager;->lowerVolumeToRs1()V

    .line 11
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/CsdWarningDialog;->sendNotification(Z)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method
