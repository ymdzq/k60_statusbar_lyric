.class public final Lcom/google/android/material/navigation/NavigationBarItemView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 2
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_2

    .line 10
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarItemView$1;->this$0:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 12
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 14
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    const/4 p2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    if-nez p2, :cond_1

    .line 23
    goto :goto_1

    .line 25
    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    .line 26
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 31
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 34
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 38
    :cond_2
    :goto_1
    return-void
    .line 41
.end method
