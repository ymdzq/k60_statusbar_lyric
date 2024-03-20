.class public final synthetic Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaProjectionPermissionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaProjectionPermissionActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/media/MediaProjectionPermissionActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/media/MediaProjectionPermissionActivity;

    .line 2
    sget p1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method
