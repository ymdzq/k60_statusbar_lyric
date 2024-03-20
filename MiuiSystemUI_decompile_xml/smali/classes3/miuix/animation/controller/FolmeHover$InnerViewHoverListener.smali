.class Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field private mHoverMap:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/controller/FolmeHover$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;-><init>()V

    return-void
.end method

.method private getHoverTranslationXTag(Landroid/view/View;)F
    .locals 1

    .line 1
    const p0, 0x7f0a05dd    # @id/miuix_animation_tag_hover_set_translation_x

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    move-result-object v0

    .line 8
    instance-of v0, v0, Ljava/lang/Float;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Float;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 19
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
    .line 25
.end method


# virtual methods
.method public varargs addHover(Lmiuix/animation/controller/FolmeHover;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
    .line 7
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lmiuix/animation/controller/FolmeHover;

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, [Lmiuix/animation/base/AnimConfig;

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 36
    move-result v3

    .line 39
    const/16 v4, 0x9

    .line 40
    if-ne v3, v4, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->getHoverTranslationXTag(Landroid/view/View;)F

    .line 44
    move-result v3

    .line 47
    invoke-static {v2}, Lmiuix/animation/controller/FolmeHover;->access$100(Lmiuix/animation/controller/FolmeHover;)F

    .line 48
    move-result v4

    .line 51
    cmpl-float v3, v3, v4

    .line 52
    if-eqz v3, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->getHoverTranslationXTag(Landroid/view/View;)F

    .line 56
    move-result v3

    .line 59
    invoke-static {v2, v3}, Lmiuix/animation/controller/FolmeHover;->access$102(Lmiuix/animation/controller/FolmeHover;F)F

    .line 60
    :cond_0
    invoke-static {v2, p1, p2, v1}, Lmiuix/animation/controller/FolmeHover;->access$200(Lmiuix/animation/controller/FolmeHover;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    const/4 p0, 0x0

    .line 67
    return p0
    .line 68
.end method

.method public removeHover(Lmiuix/animation/controller/FolmeHover;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    .line 7
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method
