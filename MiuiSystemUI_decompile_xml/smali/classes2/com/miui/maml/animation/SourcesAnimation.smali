.class public Lcom/miui/maml/animation/SourcesAnimation;
.super Lcom/miui/maml/animation/PositionAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SourcesAnimation"


# instance fields
.field private mCurrentSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    .line 1
    const-string v0, "Source"

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getSrc()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/maml/animation/SourcesAnimation$Source;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/animation/SourcesAnimation$Source;-><init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 p3, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    invoke-virtual {p0, p3, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 11
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2, p3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 15
    move-result-wide v0

    .line 18
    invoke-virtual {p0, p3, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 19
    invoke-virtual {p2, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 22
    move-result-wide v0

    .line 25
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->setCurValue(ID)V

    .line 26
    check-cast p2, Lcom/miui/maml/animation/SourcesAnimation$Source;

    .line 29
    iget-object p1, p2, Lcom/miui/maml/animation/SourcesAnimation$Source;->mSrc:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/miui/maml/animation/SourcesAnimation;->mCurrentSrc:Ljava/lang/String;

    .line 33
    return-void
    .line 35
.end method
