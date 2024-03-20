.class Lmiuix/appcompat/app/ActionBarDelegateImpl$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "ActionBarDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/ActionBarDelegateImpl;->updateOnBackPressedCallbackState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Z)V
    .locals 0

    .line 319
    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;->this$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 0

    .line 322
    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl$1;->this$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    iget-object p0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz p0, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
