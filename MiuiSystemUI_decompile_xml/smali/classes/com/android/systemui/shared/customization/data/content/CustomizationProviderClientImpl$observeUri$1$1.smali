.class final Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeUri$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $observer:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeUri$1$observer$1;

.field final synthetic this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeUri$1$observer$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeUri$1$1;->this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeUri$1$1;->$observer:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeUri$1$observer$1;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeUri$1$1;->this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeUri$1$1;->$observer:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$observeUri$1$observer$1;

    .line 10
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    return-object p0
    .line 17
.end method
