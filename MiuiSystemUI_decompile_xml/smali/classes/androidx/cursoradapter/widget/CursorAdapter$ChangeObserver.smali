.class public final Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Landroidx/cursoradapter/widget/CursorAdapter;


# direct methods
.method public constructor <init>(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 2
    new-instance p1, Landroid/os/Handler;

    .line 4
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;->this$0:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 2
    iget-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 18
    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    .line 20
    move-result p1

    .line 23
    iput-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 24
    :cond_0
    return-void
    .line 26
.end method
