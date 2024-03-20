.class public Lcom/android/settings/search/appseparate/CollectResultProcessor$StatusProcessor;
.super Ljava/lang/Object;
.source "CollectResultProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/appseparate/CollectResultProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusProcessor"
.end annotation


# static fields
.field private static final INTENT_ACTION_TOUCH_ASSISTANT_SETTINGS:Ljava/lang/String; = "miui.intent.action.TOUCH_ASSISTANT_SETTINGS"

.field static final PACKAGE_TOUCHASSISTANT:Ljava/lang/String; = "com.miui.touchassistant"

.field private static final STATE_CLOSE:I = 0x0

.field private static final STATE_OPEN:I = 0x1

.field private static final TOUCH_ASSISTANT_ENABLED:Ljava/lang/String; = "touch_assistant_enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isEnableTouchAssistant(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "com.miui.touchassistant"

    const/4 v1, 0x0

    .line 369
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "enable_touch_assistant"

    const-string/jumbo v3, "string"

    .line 372
    invoke-virtual {p0, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 380
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private static isTouchAssistantEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "touch_assistant_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static process(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.miui.touchassistant"

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    invoke-static {p0, p3}, Lcom/android/settings/search/appseparate/CollectResultProcessor$StatusProcessor;->isEnableTouchAssistant(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/search/appseparate/CollectResultProcessor$StatusProcessor;->isTouchAssistantEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 340
    invoke-virtual {p2, p0}, Lcom/android/settings/search/SearchResultItem$Builder;->setStatus(I)Lcom/android/settings/search/SearchResultItem$Builder;

    .line 341
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo p1, "miui.intent.action.TOUCH_ASSISTANT_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p2, p0}, Lcom/android/settings/search/SearchResultItem$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/settings/search/SearchResultItem$Builder;

    :cond_0
    return-void
.end method
