.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ICONS:Landroid/util/SparseArray;


# instance fields
.field public final mResId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    .line 5
    return-void
    .line 7
.end method

.method public static declared-synchronized get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object p0

    .line 8
    sget-boolean v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInControlCenter:Z

    .line 9
    invoke-static {p0, v1}, Lcom/android/systemui/controlcenter/utils/MiuiQSIcons;->getQSIcons(Ljava/lang/Integer;Z)I

    .line 11
    move-result p0

    .line 14
    sget-object v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 21
    if-nez v2, :cond_0

    .line 23
    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    .line 25
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;-><init>(I)V

    .line 27
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit v0

    .line 33
    return-object v2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0

    .line 36
    throw p0
    .line 37
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;

    .line 6
    iget p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    .line 8
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    .line 10
    if-ne p1, p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->mResId:I

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p0

    .line 7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    const-string v0, "ResourceIcon[resId=0x%08x]"

    .line 12
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method
