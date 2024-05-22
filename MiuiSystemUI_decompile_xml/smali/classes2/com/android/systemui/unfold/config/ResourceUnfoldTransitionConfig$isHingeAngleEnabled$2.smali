.class final Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;->INSTANCE:Lcom/android/systemui/unfold/config/ResourceUnfoldTransitionConfig$isHingeAngleEnabled$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "android"

    .line 6
    const-string v1, "config_unfoldTransitionHingeAngle"

    .line 8
    const-string v2, "bool"

    .line 10
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 20
    move-result p0

    .line 23
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p0

    .line 27
    return-object p0
    .line 28
.end method
