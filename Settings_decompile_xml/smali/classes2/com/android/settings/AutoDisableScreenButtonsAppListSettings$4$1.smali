.class Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4$1;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4$1;->this$1:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)I
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4$1;->sCollator:Ljava/text/Collator;

    invoke-static {p1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmLabel(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;->-$$Nest$fgetmLabel(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 192
    check-cast p1, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    check-cast p2, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$4$1;->compare(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$AppItem;)I

    move-result p0

    return p0
.end method
