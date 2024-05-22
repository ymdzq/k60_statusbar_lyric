.class public final synthetic Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/MediaProjectionPermissionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/MediaProjectionPermissionActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/MediaProjectionPermissionActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/MediaProjectionPermissionActivity;

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
