.class final Lcom/android/systemui/statusbar/policy/BlurUtilsExt$blurListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BlurUtilsExt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$blurListener$1;->this$0:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt$blurListener$1;->this$0:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    .line 11
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->blurFeatureSupportedOnDevice:Z

    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    return-object p0
    .line 19
.end method
