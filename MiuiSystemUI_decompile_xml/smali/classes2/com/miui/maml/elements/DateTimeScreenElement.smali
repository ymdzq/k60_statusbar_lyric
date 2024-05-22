.class public Lcom/miui/maml/elements/DateTimeScreenElement;
.super Lcom/miui/maml/elements/TextScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "DateTime"


# instance fields
.field private mDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

.field private mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object p2

    .line 8
    const-string/jumbo v0, "value"

    .line 9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 16
    move-result-object p2

    .line 19
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 20
    move-result-object v0

    .line 23
    const-string/jumbo v1, "timeZoneId"

    .line 24
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 31
    move-result-object v0

    .line 34
    new-instance v1, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 35
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 37
    invoke-direct {v1, p0, v2, p2, v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 39
    iput-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 42
    const-string v1, "contentDescriptionFormat"

    .line 44
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v1

    .line 53
    const/4 v2, 0x1

    .line 54
    if-nez v1, :cond_0

    .line 55
    iput-boolean v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 57
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 59
    move-result-object v3

    .line 62
    const/4 v5, 0x0

    .line 63
    const-string v6, "contentDescriptionFormat"

    .line 64
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    move-object v4, p1

    .line 69
    invoke-static/range {v3 .. v9}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;

    .line 70
    move-result-object p1

    .line 73
    new-instance v1, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 74
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 76
    iput-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    const-string v1, "contentDescriptionFormatExp"

    .line 82
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v1

    .line 91
    if-nez v1, :cond_1

    .line 92
    iput-boolean v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 94
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 96
    move-result-object v3

    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const-string v9, "contentDescriptionFormatExp"

    .line 104
    move-object v4, p1

    .line 106
    invoke-static/range {v3 .. v9}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;

    .line 107
    move-result-object p1

    .line 110
    new-instance v1, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 111
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;-><init>(Lcom/miui/maml/elements/DateTimeScreenElement;Lcom/miui/maml/util/TextFormatter;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 113
    iput-object v1, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 116
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 118
    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 122
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 124
    :cond_2
    return-void
    .line 127
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    return-object p0
    .line 15
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->getText()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    .line 7
    iget-object p0, p0, Lcom/miui/maml/elements/DateTimeScreenElement;->mDescriptionDateFormatter:Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/DateTimeScreenElement$DateFormatter;->resetCalendar()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
