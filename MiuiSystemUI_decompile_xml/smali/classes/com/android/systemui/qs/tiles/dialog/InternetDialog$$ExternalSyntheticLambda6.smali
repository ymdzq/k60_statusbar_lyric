.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;ILandroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 5
    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;->f$2:Landroid/widget/ImageView;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 2
    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda6;->f$2:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getSignalStrengthDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda9;

    .line 14
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda9;-><init>(Landroid/view/KeyEvent$Callback;Landroid/graphics/drawable/Drawable;I)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
    .line 23
.end method
