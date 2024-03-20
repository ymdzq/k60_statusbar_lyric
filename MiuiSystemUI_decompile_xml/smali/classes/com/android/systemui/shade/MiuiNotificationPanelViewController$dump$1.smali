.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;

.field public static final INSTANCE$1:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;-><init>(I)V

    .line 5
    sput-object v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;->INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;

    .line 8
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;-><init>(I)V

    .line 13
    sput-object v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;->INSTANCE$1:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;

    .line 16
    return-void
    .line 18
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lmiuix/animation/IAnimTarget;

    .line 8
    invoke-virtual {p1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :goto_0
    instance-of p0, p1, Landroid/view/View;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    move-object p0, p1

    .line 19
    check-cast p0, Landroid/view/View;

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 22
    move-result p0

    .line 25
    const/4 v0, -0x1

    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    const-string p1, ":"

    .line 33
    filled-new-array {p1}, [Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 39
    move-result-object p0

    .line 42
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/String;

    .line 47
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    :goto_1
    return-object p0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 60
.end method
