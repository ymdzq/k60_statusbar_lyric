.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/ActionModeImpl$ActionModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionModeFinish(Landroid/view/ActionMode;)V
    .locals 1

    .line 208
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->animateToMode(Z)V

    .line 209
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$2;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method
