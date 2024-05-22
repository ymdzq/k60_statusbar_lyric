.class public final synthetic Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mToast:Landroid/widget/Toast;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 16
    move-result-object p0

    .line 19
    iput-object p0, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mToast:Landroid/widget/Toast;

    .line 20
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 22
    return-void
    .line 25
.end method
