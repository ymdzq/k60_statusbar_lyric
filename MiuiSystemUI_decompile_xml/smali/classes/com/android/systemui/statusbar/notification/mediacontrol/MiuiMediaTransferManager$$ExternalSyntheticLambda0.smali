.class public final synthetic Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ImageView;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mSupportMiPlayAudio:Z

    .line 6
    if-eqz v1, :cond_1

    .line 8
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mIsMiPlayCasting:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    sget-object v1, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 22
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaTransferManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_1
    return-void
    .line 30
.end method
