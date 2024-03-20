.class public final synthetic Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/view/KeyEventDispatcher$Component;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AppCompatDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatDialog;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDialog$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AppCompatDialog;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
