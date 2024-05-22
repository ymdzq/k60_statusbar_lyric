.class final Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SimEidPreferenceController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SimEidPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimEidPreferenceController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimEidPreferenceController.kt\ncom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,199:1\n49#2,4:200\n*S KotlinDebug\n*F\n+ 1 SimEidPreferenceController.kt\ncom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2\n*L\n45#1:200,4\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;->invoke()Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineExceptionHandler;
    .locals 2

    .line 45
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    .line 49
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v1, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2$invoke$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2$invoke$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/android/settings/deviceinfo/SimEidPreferenceController;)V

    return-object v1
.end method
