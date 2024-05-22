.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$2;->INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$dump$2;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
    .line 7
.end method
