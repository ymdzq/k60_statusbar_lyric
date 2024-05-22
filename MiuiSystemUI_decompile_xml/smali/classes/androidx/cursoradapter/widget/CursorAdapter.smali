.class public abstract Landroidx/cursoradapter/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;


# instance fields
.field public mAutoRequery:Z

.field public mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

.field public mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

.field public mDataSetObserver:Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;

.field public mDataValid:Z

.field public mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 9
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 12
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    .line 14
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 17
    new-instance p1, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 19
    invoke-direct {p1, p0}, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;-><init>(Landroidx/cursoradapter/widget/CursorAdapter;)V

    .line 21
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 24
    new-instance p1, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;

    .line 26
    invoke-direct {p1, p0}, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroidx/cursoradapter/widget/CursorAdapter;)V

    .line 28
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 10
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 14
    :cond_1
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;

    .line 17
    if-eqz v1, :cond_2

    .line 19
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 21
    :cond_2
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 24
    if-eqz p1, :cond_5

    .line 26
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 28
    if-eqz v1, :cond_3

    .line 30
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 32
    :cond_3
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;

    .line 35
    if-eqz v1, :cond_4

    .line 37
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 39
    :cond_4
    const-string v1, "_id"

    .line 42
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 44
    move-result p1

    .line 47
    iput p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 48
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 51
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    goto :goto_0

    .line 56
    :cond_5
    const/4 p1, -0x1

    .line 57
    iput p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 58
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 61
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 63
    :goto_0
    if-eqz v0, :cond_6

    .line 66
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_6
    return-void
    .line 71
.end method

.method public abstract convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
    .line 16
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    if-nez p2, :cond_0

    .line 13
    move-object p1, p0

    .line 15
    check-cast p1, Landroidx/appcompat/widget/SuggestionsAdapter;

    .line 16
    iget-object p2, p1, Landroidx/appcompat/widget/SuggestionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 18
    iget p1, p1, Landroidx/appcompat/widget/SuggestionsAdapter;->mDropDownLayout:I

    .line 20
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 27
    invoke-virtual {p0, p2, p1}, Landroidx/cursoradapter/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;)V

    .line 29
    return-object p2

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/cursoradapter/widget/CursorFilter;

    .line 6
    invoke-direct {v0, p0}, Landroidx/cursoradapter/widget/CursorFilter;-><init>(Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;)V

    .line 8
    iput-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    .line 11
    :cond_0
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    .line 13
    return-object p0
    .line 15
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 13
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
    .line 17
.end method

.method public final getItemId(I)J
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 18
    iget p0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 20
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 22
    move-result-wide p0

    .line 25
    return-wide p0

    .line 26
    :cond_0
    return-wide v1
    .line 27
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 6
    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p0, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 21
    :cond_0
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 22
    invoke-virtual {p0, p2, p1}, Landroidx/cursoradapter/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;)V

    .line 24
    return-object p2

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    const-string p2, "couldn\'t move cursor to position "

    .line 30
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 40
    const-string/jumbo p1, "this should only be called when the cursor is non-null"

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    const-string/jumbo p1, "this should only be called when the cursor is valid"

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0
    .line 57
.end method

.method public abstract newView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method
