.class public final Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$LocalNavController$2$1;
.super Ljava/lang/Object;
.source "NavControllerWrapper.kt"

# interfaces
.implements Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt$LocalNavController$2;->invoke()Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public navigate(Ljava/lang/String;Z)V
    .locals 0

    .line 0
    const-string/jumbo p0, "route"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public navigateBack()V
    .locals 0

    .line 0
    return-void
.end method
