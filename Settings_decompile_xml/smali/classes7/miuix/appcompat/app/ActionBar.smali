.class public abstract Lmiuix/appcompat/app/ActionBar;
.super Landroidx/appcompat/app/ActionBar;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
.end method

.method public abstract addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation
.end method

.method public abstract addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation
.end method

.method public abstract addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V
.end method

.method public abstract getEndView()Landroid/view/View;
.end method

.method public abstract getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
.end method

.method public abstract getFragmentTabCount()I
.end method

.method public abstract getTitleView(I)Landroid/view/View;
.end method

.method public abstract registerCoordinateScrollView(Landroid/view/View;)V
.end method

.method public abstract removeActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
.end method

.method public abstract setEndView(Landroid/view/View;)V
.end method

.method public abstract setExpandState(I)V
.end method

.method public abstract setExpandState(IZ)V
.end method

.method public abstract setExpandState(IZZ)V
.end method

.method public abstract setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V
.end method

.method public abstract setResizable(Z)V
.end method

.method public abstract setStartView(Landroid/view/View;)V
.end method

.method public abstract setViewPagerDraggable(Z)V
.end method

.method public abstract unregisterCoordinateScrollView(Landroid/view/View;)V
.end method
