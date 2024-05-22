.class public abstract Lmiuix/appcompat/internal/util/SinglePopControl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sPops:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    sput-object v0, Lmiuix/appcompat/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    .line 7
    return-void
    .line 9
.end method

.method public static getHashKey(Landroid/content/Context;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v2, p0

    .line 3
    move-object v1, v0

    .line 4
    :goto_0
    if-nez v1, :cond_2

    .line 5
    if-eqz v2, :cond_2

    .line 7
    instance-of v3, v2, Landroid/app/Activity;

    .line 9
    if-eqz v3, :cond_0

    .line 11
    move-object v1, v2

    .line 13
    check-cast v1, Landroid/app/Activity;

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    .line 17
    if-eqz v3, :cond_1

    .line 19
    check-cast v2, Landroid/content/ContextWrapper;

    .line 21
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v2, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 32
    move-result p0

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 37
    move-result p0

    .line 40
    :goto_1
    return p0
    .line 41
.end method

.method public static showPop(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lmiuix/appcompat/internal/util/SinglePopControl;->getHashKey(Landroid/content/Context;)I

    .line 2
    move-result p0

    .line 5
    sget-object v0, Lmiuix/appcompat/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    if-eq v1, p1, :cond_0

    .line 26
    instance-of v2, v1, Landroid/widget/PopupWindow;

    .line 28
    if-eqz v2, :cond_0

    .line 30
    check-cast v1, Landroid/widget/PopupWindow;

    .line 32
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 43
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    return-void
    .line 51
.end method
