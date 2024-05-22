.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $blurRatio:F

.field public final synthetic $syncView:Landroid/view/View;


# direct methods
.method public constructor <init>(FLandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;->$syncView:Landroid/view/View;

    .line 2
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;->$blurRatio:F

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;->$syncView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;->$syncView:Landroid/view/View;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 13
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setWallpaperSyncBlur$1;->$blurRatio:F

    .line 19
    const/16 v1, 0x64

    .line 21
    int-to-float v1, v1

    .line 23
    mul-float/2addr p0, v1

    .line 24
    float-to-int p0, p0

    .line 25
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->setWallpaperBlur(I)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method
