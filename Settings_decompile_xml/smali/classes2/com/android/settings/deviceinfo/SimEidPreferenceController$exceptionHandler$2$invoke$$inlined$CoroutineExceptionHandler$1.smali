.class public final Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2$invoke$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2;->invoke()Lkotlinx/coroutines/CoroutineExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 SimEidPreferenceController.kt\ncom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2\n*L\n1#1,110:1\n46#2,4:111\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/android/settings/deviceinfo/SimEidPreferenceController;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2$invoke$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    .line 49
    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "SimEidPreferenceController"

    const-string v0, "load eSim error: "

    .line 111
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    iget-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2$invoke$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->access$getLoadingDialog$p(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->access$dismiss(Lcom/android/settings/deviceinfo/SimEidPreferenceController;Lmiuix/appcompat/app/AlertDialog;)V

    .line 113
    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$exceptionHandler$2$invoke$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/android/settings/deviceinfo/SimEidPreferenceController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->access$getErrorDialog$p(Lcom/android/settings/deviceinfo/SimEidPreferenceController;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/SimEidPreferenceController;->access$show(Lcom/android/settings/deviceinfo/SimEidPreferenceController;Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method
