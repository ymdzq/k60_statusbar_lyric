.class public final synthetic Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMenuOutShadowView:Lmiuix/appcompat/internal/view/OutDropShadowView;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    .line 8
    move-result p2

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 12
    move-result p3

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    .line 16
    move-result p4

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 20
    move-result p0

    .line 23
    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method
