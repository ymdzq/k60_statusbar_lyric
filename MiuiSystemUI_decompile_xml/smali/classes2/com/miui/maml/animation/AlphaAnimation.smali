.class public Lcom/miui/maml/animation/AlphaAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mDelayValue:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 2

    .line 1
    const-string v0, "Alpha"

    .line 2
    const-string v1, "a"

    .line 4
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    .line 6
    const-string p2, "delayValue"

    .line 9
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    move-result p1

    .line 24
    iput p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/BaseAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 29
    move-result-object p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    invoke-virtual {p2, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 35
    move-result-wide p1

    .line 38
    double-to-int p1, p1

    .line 39
    iput p1, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I

    .line 40
    :catch_0
    :cond_1
    :goto_0
    return-void
    .line 42
.end method


# virtual methods
.method public final getAlpha()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getCurValue(I)D

    .line 3
    move-result-wide v0

    .line 6
    double-to-int p0, v0

    .line 7
    return p0
    .line 8
.end method

.method public getDefaultValue()D
    .locals 2

    .line 1
    const-wide v0, 0x406fe00000000000L    # 255.0

    .line 2
    return-wide v0
    .line 7
.end method

.method public getDelayValue(I)D
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/animation/AlphaAnimation;->mDelayValue:I

    .line 2
    int-to-double p0, p0

    .line 4
    return-wide p0
    .line 5
.end method
