.class public final synthetic Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/text/Collator;


# direct methods
.method public synthetic constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda0;->f$0:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda0;->f$0:Ljava/text/Collator;

    check-cast p1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    check-cast p2, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-static {p0, p1, p2}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->$r8$lambda$p-bOhFNApeseDr3U9fV18RqwFq4(Ljava/text/Collator;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;)I

    move-result p0

    return p0
.end method
