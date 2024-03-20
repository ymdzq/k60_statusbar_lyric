.class public interface abstract Lmiuix/appcompat/app/IFragment;
.super Ljava/lang/Object;
.source "IFragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IContentInsetState;
.implements Lmiuix/appcompat/app/ExtraPaddingObserver;


# virtual methods
.method public abstract checkThemeLegality()V
.end method

.method public abstract getActionBar()Lmiuix/appcompat/app/ActionBar;
.end method

.method public abstract getThemedContext()Landroid/content/Context;
.end method

.method public abstract hasActionBar()Z
.end method

.method public abstract onActionModeFinished(Landroid/view/ActionMode;)V
.end method

.method public abstract onActionModeStarted(Landroid/view/ActionMode;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onCreatePanelMenu(ILandroid/view/Menu;)Z
.end method

.method public abstract onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method public abstract onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
.end method

.method public abstract onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
.end method
