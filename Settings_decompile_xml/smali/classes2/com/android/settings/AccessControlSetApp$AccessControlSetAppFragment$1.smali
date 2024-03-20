.class Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;
.super Ljava/lang/Object;
.source "AccessControlSetApp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->sCollator:Ljava/text/Collator;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->mAppLabelMap:Ljava/util/HashMap;

    return-void
.end method

.method private getLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->this$0:Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;

    invoke-static {v0}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;->-$$Nest$fgetmPm(Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->sCollator:Ljava/text/Collator;

    invoke-direct {p0, p1}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->getLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->getLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AccessControlSetApp$AccessControlSetAppFragment$1;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    return p0
.end method
